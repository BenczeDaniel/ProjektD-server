import mysql from "mysql";
import { configDB } from "../configDB.js";
const db=mysql.createConnection(configDB)









export const Books=(request,response)=>{
    console.log(request.body)
    db.query('SELECT  *  from books order by author',(err,result)=>{
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}