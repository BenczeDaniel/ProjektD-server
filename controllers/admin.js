import mysql from "mysql";
import { configDB } from "../configDB.js";
const db=mysql.createConnection(configDB)









export const DDGYM=(request,response)=>{
    console.log(request.body)
    db.query('SELECT  *  from d&dgym order by author',(err,result)=>{
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}