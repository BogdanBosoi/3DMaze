randomize();
for(i = 1; i <= 4; i++)
    randvec[i] = -1;
di[0] =  1; dj[0] =  0;
di[1] = -1; dj[1] =  0;
di[2] =  0; dj[2] = -1;
di[3] =  0; dj[3] =  1;

o = 0;
randvec[++o] = choose(0, 1, 2, 3);

pos = randvec[o];

miscx = argument[0] + 2 * di[pos];
miscy = argument[1] + 2 * dj[pos];
smiscx = argument[0] + di[pos];
smiscy = argument[1] + dj[pos];

if((miscx <= global.width) && (miscx >= 0) && (miscy >= 0) && (miscy <= global.height) && (smiscx <= global.width) && (smiscy <= global.height) && (global.M[miscx, miscy] = 1) && (global.M[smiscx, smiscy] = 1))
    {
        /*randomize()
        choiceme = choose(1,2,3);
        if(choiceme = 1){
        global.M[miscx, miscy] = 1;
        global.M[smiscx, smiscy] = 1;}
        else*/
            {global.M[miscx, miscy] = 0 global.M[smiscx, smiscy] = 0}
        scr_DFS(miscx, miscy);
    }

o++;

do{
    randomize();
    randvec[o] = choose(0, 1, 2, 3);
}until(randvec[o] != randvec[o - 1]);

pos = randvec[o];

miscx = argument[0] + 2 * di[pos];
miscy = argument[1] + 2 * dj[pos];
smiscx = argument[0] + di[pos];
smiscy = argument[1] + dj[pos];

if((miscx <= global.width) && (miscx >= 0) && (miscy >= 0) && (miscy <= global.height) && (smiscx <= global.width) && (smiscy <= global.height) && (global.M[miscx, miscy] = 1) && (global.M[smiscx, smiscy] = 1))
    {
        /*randomize()
        choiceme = choose(1,2,3,4,5);
        if(choiceme = 1){
        global.M[miscx, miscy] = 1;
        global.M[smiscx, smiscy] = 1;}
        else*/
            {global.M[miscx, miscy] = 0 global.M[smiscx, smiscy] = 0}
        scr_DFS(miscx, miscy);
    }
    
o++; 
/*do{
    randomize()
    randvec[o] = choose(0, 1, 2, 3);
}until((randvec[o] != randvec[o - 1]) && (randvec[o] != randvec[o - 2]) && (randvec[o - 1] != randvec[o - 2]))*/
randomize();
randvec[o] = choose(0, 1, 2, 3);
if(!((randvec[3] != randvec[2]) && (randvec[3] != randvec[1]) && (randvec[2] != randvec[1]))) 
{
    while !((randvec[3] != randvec[2]) && (randvec[3] != randvec[1]) && (randvec[2] != randvec[1])){
        randomize();
        randvec[o] = choose(0, 1, 2, 3);
    }   
}
pos = randvec[o];

miscx = argument[0] + 2 * di[pos];
miscy = argument[1] + 2 * dj[pos];
smiscx = argument[0] + di[pos];
smiscy = argument[1] + dj[pos];

if((miscx <= global.width)  && (miscx >= 0) && (miscy >= 0) && (miscy <= global.height) && (smiscx <= global.width) && (smiscy <= global.height) && (global.M[miscx, miscy] = 1) && (global.M[smiscx, smiscy] = 1))
    {
        /*randomize()
        choiceme = choose(1,2,3,4,5);
        if(choiceme = 1){
        global.M[miscx, miscy] = 1;
        global.M[smiscx, smiscy] = 1;}
        else*/
            {global.M[miscx, miscy] = 0 global.M[smiscx, smiscy] = 0}
        scr_DFS(miscx, miscy);
    }
    
o++;
randvec[o] = 6 - randvec[1] - randvec[2] - randvec[3];

pos = randvec[o];

miscx = argument[0] + 2 * di[pos];
miscy = argument[1] + 2 * dj[pos];
smiscx = argument[0] + di[pos];
smiscy = argument[1] + dj[pos];

if((miscx <= global.width) && (miscx >= 0) && (miscy >= 0) && (miscy <= global.height) && (smiscx <= global.width) && (smiscy <= global.height) && (global.M[miscx, miscy] = 1) && (global.M[smiscx, smiscy] = 1))
    {
    /*randomize()
        choiceme = choose(1,2,3,4,5);
        if(choiceme = 1){
        global.M[miscx, miscy] = 1;
        global.M[smiscx, smiscy] = 1;}
        else*/
            {global.M[miscx, miscy] = 0 global.M[smiscx, smiscy] = 0}
        scr_DFS(miscx, miscy);
    }