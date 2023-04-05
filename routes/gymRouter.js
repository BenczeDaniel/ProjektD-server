import express from "express";
import {Category, Opening, Prices, getTrainings, Users, updateOpening , deletePrices} from "../controllers/gym.js"

export const gymRouter=express.Router();

gymRouter.route('/opening').get(Opening);
gymRouter.route('/prices').get(Prices);
gymRouter.route('/category').get(Category);
gymRouter.route('/trainings').get(getTrainings);
gymRouter.route('/users').get(Users);
gymRouter.route('/deletePrices/:id').get(deletePrices);
gymRouter.route('/updateOpening').get(updateOpening);