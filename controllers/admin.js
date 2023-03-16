import mysql from "mysql";
import { configDB } from "../configDB.js";
const db=mysql.createConnection(configDB)









export const Category =(request,response)=>{
    console.log(request.body)
    db.query('SELECT c.id, p.Egeszar,p.kedvezmenyesar,p.megjegyzes,c.description from prices p, category c WHERE p.categid = c.id',(err,result)=>{
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}


export const Prices =(request,response)=>{
    console.log(request.body)
    db.query('SELECT  *  from prices order by id',(err,result)=>{
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}


export const Opening=(request,response)=>{
    console.log(request.body)
    db.query('SELECT  *  from opening order by id',(err,result)=>{
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}