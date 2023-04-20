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
export const Prices =(request,response)=>{
    console.log(request.body)
    db.query('SELECT  *  from prices order by id',(err,result)=>{
        
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}

export const Category =(request,response)=>{
    console.log(request.body)
    db.query('SELECT p.id priceid, c.id, p.Egeszar,p.kedvezmenyesar,p.megjegyzes,c.description from prices p, category c WHERE p.categid = c.id',(err,result)=>{
        
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}

export const getTrainings =(request,response)=>{
    db.query('SELECT * from Trainings ',(err,result)=>{
        
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}


export const Users =(request,response)=>{
    console.log(request.body)
    db.query('SELECT  *  from users order by id',(err,result)=>{
        
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}



export const deletePrices =(request,response)=>{
    const{id}=request.params
    db.query('DELETE from prices where id=? ',[+id],(err,result)=>{
        
        if(err)
            console.log('HIBA!',err)
        else
        response.send(result)
    })
}


export const updatePrices=(request,response)=>{
    console.log(request.body)
    const {id,Egeszar,kedvezmenyesar} = request.body
    db.query('UPDATE prices set KedvezmenyesAr =? , Egeszar =? where id = ?',[Egeszar,kedvezmenyesar,id],(err,result)=>{
        
        if(err)
            console.log('HIBA!',err)
        else
            response.send(result)   
    })
}