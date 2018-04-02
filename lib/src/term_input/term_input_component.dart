import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../term_service.dart';

@Component(
  selector: 'app-term-input',
  styleUrls: const ['term_input_component.css'],
  templateUrl: 'term_input_component.html',
  directives: const [CORE_DIRECTIVES, formDirectives],
//  providers: const [TodoListService],
)
class TermInputComponent {
  final TermService termService;

  @ViewChild("inputbox")
  ElementRef inputBox;

  String cmdInput = "";

  TermInputComponent(this.termService);

  executeCommand(String cmd) {
    cmdInput = "";
    termService.execute(cmd);
  }

  focusInput() {
    inputBox.nativeElement.focus();
  }
}
