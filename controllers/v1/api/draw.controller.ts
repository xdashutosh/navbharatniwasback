import { Request, Response } from "express";
import { Constants } from "../../../utils/constants.util";
import { ResponseEntity } from "../../../entities/core/response.entity";
import MasterController from "../../master.controller";
import { DrawModel } from "../../../models/v1/draw.model";

export class DrawController extends MasterController {

    private drawModel: DrawModel;

    constructor() {
        super();

        this.drawModel = new DrawModel();

        // bindings
        this.fetchdraw = this.fetchdraw.bind(this);
        this.createdraw = this.createdraw.bind(this);
        this.updatedraw = this.updatedraw.bind(this);
        this.deletedraw = this.deletedraw.bind(this);
    }

    async fetchdraw(req: Request, res: Response) {
        const startMS = new Date().getTime();
        let resModel = { ...ResponseEntity };
        let params;
        try {
            params = req.query;
            resModel = await this.drawModel.fetch(params);

            resModel.endDT = new Date();
            resModel.tat = (new Date().getTime() - startMS) / 1000;
            res.status(Constants.HTTP_OK).json(resModel);
        } catch (error) {
            resModel.status = -9;
            resModel.info = "catch: " + error + " : " + resModel.info;
            this.logger.error(JSON.stringify(resModel), `${this.constructor.name} : fetchdraw`);
        }
    }

    async createdraw(req: Request, res: Response) {
        const startMS = new Date().getTime();
        let resModel = { ...ResponseEntity };
        let payload;
        try {
            payload = req.body;

            // make sure required keys exist
            const verifyKeys = this.verifyKeys(req.body, ['draw_name']);
            if (verifyKeys.length !== 0) {
                resModel.status = -9;
                resModel.info = "error: Missing keys: " + verifyKeys + " : " + resModel.info;
                return res.status(Constants.HTTP_BAD_REQUEST).json(resModel);
            }

            // make sure required fields are not empty
            const mandatoryFields = this.mandatoryFields(req.body, ['draw_name']);
            if (mandatoryFields.length !== 0) {
                resModel.status = -9;
                resModel.info = "error: Empty fields: " + mandatoryFields + " : " + resModel.info;
                return res.status(Constants.HTTP_BAD_REQUEST).json(resModel);
            }

            resModel = await this.drawModel.createEntity(payload, "property", "draw_master", "draw_id");

            resModel.endDT = new Date();
            resModel.tat = (new Date().getTime() - startMS) / 1000;
            res.status(Constants.HTTP_OK).json(resModel);

        } catch (error) {
            resModel.status = -9;
            resModel.info = "catch: " + JSON.stringify(error) + " : " + resModel.info;
            this.logger.error(JSON.stringify(resModel), `${this.constructor.name} : drawController`);
        }
    }

    async updatedraw(req: Request, res: Response) {
        const startMS = new Date().getTime();
        let resModel = { ...ResponseEntity };
        let payload;
        try {
            payload = req.body;

            resModel = await this.drawModel.updateEntity("property", "draw_master", { draw_id: req.params.id }, payload);

            resModel.endDT = new Date();
            resModel.tat = (new Date().getTime() - startMS) / 1000;
            res.status(Constants.HTTP_OK).json(resModel);

        } catch (error) {
            resModel.status = -9;
            resModel.info = "catch: " + error + " : " + resModel.info;
            this.logger.error(JSON.stringify(resModel), `${this.constructor.name} : updatedraw`);
        }
    }

    async deletedraw(req: Request, res: Response) {
        const startMS = new Date().getTime();
        let resModel = { ...ResponseEntity }
        try {
            resModel = await this.drawModel.deleteEntity("property", "draw_master", "draw_id", req.params.id);

            resModel.endDT = new Date();
            resModel.tat = (new Date().getTime() - startMS) / 1000;
            res.status(Constants.HTTP_OK).json(resModel);

        } catch (error) {
            resModel.status = -9;
            resModel.info = "catch: " + error + " : " + resModel.info;
            this.logger.error(JSON.stringify(resModel), `${this.constructor.name} : deletedraw`);
        }
    }
}
