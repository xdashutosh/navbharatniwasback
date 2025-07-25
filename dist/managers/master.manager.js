"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const logger_util_1 = __importDefault(require("../utils/logger.util"));
const method_util_1 = __importDefault(require("../utils/method.util"));
class MasterManager {
    constructor() {
        this.logger = new logger_util_1.default();
        this.methods = new method_util_1.default();
    }
}
exports.default = MasterManager;
