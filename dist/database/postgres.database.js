"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.usersDBPool = void 0;
const dotenv_1 = __importDefault(require("dotenv"));
const logger_util_1 = __importDefault(require("../utils/logger.util"));
const pg_1 = require("pg");
const constants_util_1 = require("../utils/constants.util");
const query_entity_1 = require("../entities/core/query.entity");
dotenv_1.default.config();
const logger = new logger_util_1.default();
// PostgreSQL database connection information
const dbConfig = {
    host: process.env.SQL_DB_HOST_IP,
    port: Number(process.env.SQL_DB_PORT),
    database: process.env.USERS_DB_NAME,
    user: process.env.SQL_DB_USER,
    password: process.env.SQL_DB_PASSWORD,
    max: 20,
    idleTimeoutMillis: 30000,
    connectionTimeoutMillis: 2000,
    ssl: {
        rejectUnauthorized: false // Use true with proper SSL certificates in production
    }
};
// Create a connection pool
logger.info("DB Connection Pool: Starting: DB Name :: " + JSON.stringify(dbConfig.database), 'DB CONN POOL');
exports.usersDBPool = new pg_1.Pool(dbConfig);
logger.info("DB Connection Pool: Success", 'DB CONN POOL');
class SQLMaster {
    constructor() {
        this.autoCommit = true;
    }
    // Method to execute a query
    async executeQuery(query, args) {
        let startMS = new Date().getTime();
        let queryModel = { ...query_entity_1.QueryEntity };
        try {
            const result = await exports.usersDBPool.query(query, args);
            queryModel.status = constants_util_1.Constants.SUCCESS;
            queryModel.info = "SUCCESS";
            queryModel.command = result.command;
            queryModel.oid = result.oid;
            if (Array.isArray(result.rows)) {
                queryModel.rowCount = result.rowCount;
                queryModel.rows = result.rows;
                // Check if this was an INSERT statement
                if (query.startsWith("INSERT")) {
                    queryModel.insertId = result.rows[0].id;
                    queryModel.info += `: Inserted Row ID: ${queryModel.insertId}`;
                }
                queryModel.info += `: Fetched Rows: ${queryModel.rowCount}`;
            }
            queryModel.tat = (new Date().getTime() - startMS) / 1000;
            return queryModel;
        }
        catch (err) {
            const errorCode = err.code;
            const errorMessage = err.message;
            logger.error(`DB: ERROR on query: ${query} - Error Code: ${errorCode}, Message: ${errorMessage}`, 'SQLMaster : executeQuery');
            queryModel.status = constants_util_1.Constants.DB_QUERY_ERROR;
            queryModel.info = `DB: executeQuery(): ERROR Code: ${errorCode}, Message: ${errorMessage}`;
            throw queryModel;
        }
    }
}
exports.default = SQLMaster;
