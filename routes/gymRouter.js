import express from "express";
import {Opening} from "../controllers/gym.js"

export const gymRouter=express.Router();

gymRouter.route('/opening').get(Opening);