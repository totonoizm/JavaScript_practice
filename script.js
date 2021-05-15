let randomNumber = Math.floor(Math.random() + 100) + 1;

const guesses = document.querySelector('.guesses');
const lastResult = document.querySelector('.lastResult');
const lowOrHi = document.querySelector('lowOrHi');

const guessSubmit = document.querySelector('guessSubmit');
const guessField = document.querySelector('guessField');

function checkGuess(){
    let userGuess = Number(guessField.value);
    if (guessCount === 1){
        guesses.textContent = "前回の予想： "
    }
    guesses.textContent += userGuess + '';

    if(userGuess === randomNumber){
        lastResult.textContent = "おめでとう！正解です！";
        lastResult.style.backgroundColor = "green";
        lowOrHi.textContent = "";
        setGameOver();
    }else if (guessCount === 10){
        lastResult.textContent = "!!!ゲームオーバー!!!";
        setGameOver();
    }else{
        lastResult.textContent = "間違いです";
        lastResult.style.backgroundColor = "red";
        if(userGuess < randomNumber){
            lowOrHi.textContent="今の予想は小さすぎです";
        }else if (userGuess > randomNumber){
                lowOrHi.textContent = "今の予想は大きすぎです";
        }
    }
    guessCount++;
    guessField.value = "";
    guessField.focus();

}
guessSubmit.addEventListener('click', checkGuess);

let guessCount = 1;
let resetButton;
