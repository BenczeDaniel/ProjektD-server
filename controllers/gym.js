import mysql from "mysql";
import { configDB } from "../configDB.js";
const db=mysql.createConnection(configDB)









export const Opening=(request,response)=>{
    console.log(request.body)
    db.query('SELECT  *  from opening order by id',(err,result)=>{
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}