//imports
import 'dart:html';
import 'dart:math' show Random;
//varibles
List placeholderText = ["will she say yes?","is she the one?" , "is it a boy?" , "should I do my homework?", "is this real life?", "will I pass?", "will I win?", "do you work?", "am I ready?", "should I eat?", "should I workout?", "should I start a band?", "should I sleep?", "are we there yet?", "are we done yet?",];
List answers = ["yes","no","maybe","shake again","try again later"];
final random = new Random();
var randomInt = random.nextInt(placeholderText.length);
var textbox = querySelector('#inputQuestion');
var infotext = querySelector('#infotextbefore');
var questionText = querySelector('#question');
void main()
{
 textbox.attributes['placeholder'] = placeholderText[randomInt];
 textbox.onInput.listen((EventListener) {
   infotext.style.opacity = "1";
 });
 window.onKeyUp.listen(enterPressed);
}

void enterPressed(KeyboardEvent e)
{
  if (e.keyCode == KeyCode.ENTER)
       {
          var question = textbox.value;
          infotext.style.opacity = "0";
          textbox.style.display = "none";
          questionText.text = question;
          questionText.style.opacity = "1";
        
       }
}