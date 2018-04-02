import 'package:angular/angular.dart';

import '../term_service.dart';
import '../safe_html_pipe.dart';

@Component(
  selector: 'app-term-output',
  styleUrls: const ['term_output_component.css'],
  templateUrl: 'term_output_component.html',
  directives: const [CORE_DIRECTIVES],
  pipes: const [SafeHtmlPipe],
)
class TermOutputComponent {
  final TermService termService;

  TermOutputComponent(this.termService);

  getDisplayText() {
    return this.termService.displayText;
  }
}
