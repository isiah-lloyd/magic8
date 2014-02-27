//imports
import 'dart:html';
import 'dart:math' show Random;
//varibles
List placeholderText = ["will she say yes?","is she the one?" , "is it a boy?" , "should I do my homework?"];
final random = new Random();
var randomInt = random.nextInt(4);
var textbox = querySelector('#inputQuestion');

void main()
{
 textbox.attributes['placeholder'] = placeholderText[randomInt];
}
