import express from "express";
import {login,register,checkEmail,checkUsername,updateAvatar,delUser,changePassword,updateUser,updatePrices} from "../controllers/auth.js"

export const router=express.Router();

router.route('/login').post(login);
router.route('/register').post(register);
router.route('/checkEmail').post(checkEmail);
router.route('/checkUsername').post(checkUsername);
router.route('/updateAvatar').put(updateAvatar);
router.route('/deleteUser/:id').get(delUser);
router.route('/changePassword').put(changePassword);
router.route('/update').post(updateUser);
router.route('/updateprices').post(updatePrices);