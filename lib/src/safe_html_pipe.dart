import 'package:angular/angular.dart';
import 'package:angular/security.dart';

@Pipe('safeHtml')
class SafeHtmlPipe implements PipeTransform  {
  DomSanitizationService sanitizer;
  SafeHtmlPipe(this.sanitizer);
  SafeHtml transform(String value) {
    return sanitizer.bypassSecurityTrustHtml(value);
  }
}
