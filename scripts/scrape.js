console.log(
  [...document.querySelectorAll(".card")]
    .map((item) => {
      const question = item.querySelector(".card-question-text > p").innerText;
      const answer = item.querySelector(".card-answer-text > p").innerText;

      return `("${question}", "${answer}", 1),`;
    })
    .join("\n")
);
