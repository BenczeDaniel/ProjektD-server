import express from "express";
import {Category, Opening, Prices, Users, updatePrices,updateOpening} from "../controllers/gym.js"
export const adminRouter=express.Router();

adminRouter.route('/opening').get(Opening);
adminRouter.route('/prices').get(Prices);
adminRouter.route('/category').get(Category);
adminRouter.route('/users').get(Users);
adminRouter.route('/updatePrices').get(updatePrices);
adminRouter.route('/updateOpening').get(updateOpening);


