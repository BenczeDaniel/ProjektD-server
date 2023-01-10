import express from "express";
import {Books} from "../controllers/admin.js"

export const adminRouter=express.Router();

adminRouter.route('/Books').get(Books);
