import 'package:angular/angular.dart';

import 'src/term_input/term_input_component.dart';
import 'src/term_output/term_output_component.dart';
import 'src/term_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [CORE_DIRECTIVES, TermInputComponent, TermOutputComponent],
  providers: const [TermService],
)
class AppComponent {
  @ViewChild(TermInputComponent)
  TermInputComponent termInput;

  void focusInput() => termInput.focusInput();
}
