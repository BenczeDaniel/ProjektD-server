import express from "express";
import {DDGYM} from "../controllers/admin.js"

export const adminRouter=express.Router();

adminRouter.route('/d&dgym').get(DDGYM);
