const { Client, Intents, MessageActionRow, Message } = require('discord.js');
const client = new Client({ intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_MESSAGES] });
const fs = require('fs');
client.on('ready', () => {
    console.log(`Logged in as ${client.user.tag}!`);
});
const convertEmoji = (who) => {
    if (who === "가위"){
        return "✌"
    }
    else if(who === "바위"){
        return "✊";
    }
    else if(who === "보"){
        return "🖐";
    }
}


client.on('message', msg=> {
    if(msg.author.bot) return; // 무한반복 방지 코드
    if(msg.author.id === client.user.id) return; //로그인한 봇으로 채팅 입력 방지
    
    const id = msg.author.id; // 유저의 고유 아이디
    const name = msg.author.username;
    
    const filePath = `./data/${id}.json`; //유저 정보가 만들어지는 파일
    // TODO 파일이 없다면 파일을 생성해야함
    !fs.existsSync(filePath) ? fs.writeFileSync(filePath, JSON.stringify({})) : null; //
    // 파일을 읽어서 user에 저장
    const user = JSON.parse(fs.readFileSync(filePath,"utf-8"));
    
    // 오늘 날짜를 만든다
    const today = new Date();
    const date = "" + today.getFullYear() + today.getMonth() + today.getDate();
    //돈을 얼마나 지급해
    const howMuch = 5000; // 봇이 하루에 5천원을 주는로직
    if(msg.content === "show me the money"){ // 돈  이라고 하면 5000원을 줌
        let saveUser = {}; //유저 정보를 업데이트 할 변수
        if(user.id) { //파일에 유저 정보가 있다면
            msg.reply(`${howMuch}원이 지급됐어!\n${name}의 현재 잔액은 ${user.money} -> ${user.money + howMuch}`);
                saveUser = {
                    // 갱신할 유저 정보
                    id : id,  //아이디
                    name : name,   // 닉네임
                    date : date,   // 일치하는 오늘일자
                    money : user.money + howMuch, //5천원 지급
                }
            
            
            
            // if(user.date === date ){ // 유저 정보의 일자랑 오늘이랑 같아면
            //     msg.reply(`돈은 하루에 한 번 지급합니다.`)
            //     saveUser = user; // 유저 정보를 바꾸지 않고 저장
            // }
            // else { // 일자가 다르다면 ( 과거에 받고 오늘 안받았으면)
            //     msg.reply(`${howMuch}원이 지급됐어!\n${name}의 현재 잔액은 ${user.money} -> ${user.money + howMuch}`);
            //     saveUser = {
            //         // 갱신할 유저 정보
            //         id : id,  //아이디
            //         name : name,   // 닉네임
            //         date : date,   // 일치하는 오늘일자
            //         money : user.money + howMuch, //5천원 지급
            //     }
            // }
        }else {
            msg.reply(`${name}!! 시작하는 걸 환영해! ${howMuch}원이 지급됐어!`);
            saveUser = {id, name, date, money : howMuch} ; //돈을 기존 돈에 추가하는 것이 아니라 무조건 5천원(howMuch)
        }
        fs.writeFileSync(filePath, JSON.stringify(saveUser)); //새로운 정보를 파일에 쓰기
    }
    if(msg.content === "잔액"){
        user.id ? msg.reply(`${name}님의 현재 잔액 : ${user.money}`) : msg.rep(`등록되지 않은 유저. 도움말`);
    }

    if (msg.content === '야'){
         msg.reply('호!');
    }
    if (msg.content === '멋'){
         msg.reply('져!');
    }
    if (msg.content === '고객센터'){
        msg.reply('고객센터 : 010-9937-7328')
    }
    if (msg.content === '청소'){
        msg.channel.bulkDelete(100);   


    }


    if(msg.content === "가위" || msg.content === "바위" || msg.content === "보") {
        const human = msg.content ; 
        const list = ["가위" , "바위", "보" ];
        const random = Math.floor(Math.random() * 3 );
        const bot = list[random];
        let winner = "";
        
        if(human === bot) {
            winner = "비김";
        }
        else{ 
            human === "가위" ? (winner = bot === "바위" ? "애호박" : "인간"):"";
            human === "바위" ? (winner = bot === "보" ? "애호박" : "인간"):"";
            human === "보" ? (winner = bot === "가위" ? "애호박" : "인간"):"";
        }

        const result = 
`
    사람 : ${convertEmoji(human)} vs 애호박 : ${convertEmoji(bot)}
    ${winner === "비김"? "우리는 비겼다 인간." :  winner + "의 승리다"}
`    
         msg.reply(result);
    }
});
client.login('');
