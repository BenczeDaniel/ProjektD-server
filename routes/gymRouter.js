import express from "express";
import {Category, Opening, Prices} from "../controllers/gym.js"

export const gymRouter=express.Router();

gymRouter.route('/opening').get(Opening);
gymRouter.route('/prices').get(Prices);
gymRouter.route('/category').get(Category);