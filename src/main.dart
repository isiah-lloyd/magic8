//imports
import 'dart:html';
import 'dart:math' show Random;
//varibles
List placeholderText = ["will she say yes?","is she the one?" , "is it a boy?" , "should I do my homework?", "is this real life?", "will I pass?", "will I win?", "do you work?", "am I ready?", "should I eat?", "should I workout?", "should I start a band", "should I sleep?", "are we there yet?", "are we done yet?",];
final random = new Random();
var randomInt = random.nextInt(placeholderText.length);
var textbox = querySelector('#inputQuestion');

void main()
{
 textbox.attributes['placeholder'] = placeholderText[randomInt];
 window.onKeyUp.listen(enterPressed);
}

void enterPressed(KeyboardEvent e)
{
  if (e.keyCode == KeyCode.ENTER)
       {
          var question = textbox.value;
          print (question);
       }
}