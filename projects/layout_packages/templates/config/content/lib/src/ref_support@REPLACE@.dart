
import 'package:mars_layout_base_def_config/mars_layout_base_def_config.dart';
import 'package:<[@ layout.config.packageName @]>/src/layouts_gen/widget/widget_ref.dart';


class <[@ layout.config.classPrefix @]>WidgetRef {
  final def = YbdMarsBuildWidgetReferences();
  // final base = YbuiMarsBuildWidgetReferences();  // nutzen? oder besser vermeiden?
  final renameMe = <[@ layout.config.classPrefix @]>MarsBuildWidgetReferences();
}

mixin <[@ layout.config.classPrefix @]>WidgetRefSupport {

  <[@ layout.config.classPrefix @]>WidgetRef get ref => <[@ layout.config.classPrefix @]>WidgetRef();

}
