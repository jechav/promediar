/* 
 
 Algoritmos para calculo de notas
 Las notas estan compuestas por tres valores que representan los cortes o seguimientos
 de cada materia durante el semestre las cuales estan descritas así:
            1 Seguimiento.............150 pts
            2 Seguimiento.............150 pts
            3 Seguimiento.............200 pts

 La suma de estos corresponde a la nota final con un valor maximo de 500 pts; de esta forma:
 1 seg + 2 seg + 3 seg = nota_final, para los algoritmos se tendrá en cuenta que la
 correspondencia de los seguimientos en términos de porcentages con repectos a las nota final
 está repartido así: 30% -> 1 seguimienton, 2 seguimientos y 40% -> 3 seguimiento.
 
 La calculadora podrá estimar la cantidad correspondiente a cualquiera de los valores faltantes
 en los siguientes casos:
 
 1. Se cuenta con al nota_final
 
 2. Se cuenta con la nota_final y uno de los seguimientos
 
 3. Se cuenta con la nota_final y dos de los seguimientos
 
 4. Se cuenta con uno de los seguimientos
 apunte: Para este caso se usa la logica del 2 caso, y a la nota final
 se hace correspondiente a un valor ideal asignado previamente: 300 pts
 
 5. Se cuenta con dos de los seguimientos
 apunte: Para este caso se usa la logica del 3 caso, y a la nota final
 se hace correspondiente a un valor ideal asignado previamente: 300 pts
 
 6. No se cuenta con nada
 apunte: para este caso se cuenta con una asignacion ideal a todos los 
 campos designados de esta forma: 150+150+200 = 300 pts.
 */


var nota_f, seg1, seg2, seg3;

/** CASO 1  
 * entran: nota_f
 * salen: seg1, seg2, seg3
 **/
function caso1(nota_f, seg1, seg2, seg3) {
    if(nota_f === null || nota_f > 500 || nota_f < 0){
        nota_f = 300;
    }
    
    seg1, seg2 = (nota_f) * 30 / 100;
    seg3 = (nota_f) * 40 / 100;
}
/** CASO 2
 * entran: nota_f, nota1
 * salen: seg1, seg2, seg3
 **/
function caso2(nota_f, nota1) {
    
    if(nota_f === null || nota_f > 500 || nota_f < 0){
        nota_f = 300;
    }
    if(nota1 > 150 || nota1 < 0 || nota1 ===null){
        nota1 = 150;
    } 
    var nota_temp = nota_f - nota1;
    if (nota1 === seg1) {
        
        seg2 = (nota_temp) * 42 / 100;
        seg3 = (nota_temp) * 58 / 100;
        
    } else if (nota1 === seg2) {
        seg1 = (nota_temp) * 42 / 100;
        seg3 = (nota_temp) * 58 / 100;
        
    } else {
        seg1, seg2 = (nota_f) * 42 / 100;
    }

}
/** CASO 3
 * seg1, seg2, seg3, nota_f
 **/
function caso3(seg1, seg2, seg3, nota_f){
    if(seg1 === null){
        seg1 = nota_f -(nota1+nota2);
    }
        
    if(seg2 === null){
        seg2 = nota_f -(nota1+nota2);
    }
    
    if(seg3 === null){
        seg3 = nota_f -(nota1+nota2);
    }
}




