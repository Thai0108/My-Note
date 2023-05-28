import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    Key? key,
    required this.onMapWidgetWidgetCreated,
    required this.viewTypeID,
  }) : super(key: key);
  final String viewTypeID;

  final Function(MapWidgetController) onMapWidgetWidgetCreated;

  @override
  State<StatefulWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidView(
          viewType: widget.viewTypeID,
          onPlatformViewCreated: _onPlatformViewCreated,
          creationParamsCodec: const StandardMessageCodec(),
        );
      case TargetPlatform.iOS:
        return UiKitView(
          viewType: widget.viewTypeID,
          onPlatformViewCreated: _onPlatformViewCreated,
          creationParamsCodec: const StandardMessageCodec(),
        );
      default:
        return const Text('Unsupported platform view');
    }
  }

  void _onPlatformViewCreated(int id) async {
    if (widget.onMapWidgetWidgetCreated == null) {
      return;
    }
    widget.onMapWidgetWidgetCreated(MapWidgetController._(id));
  }
}

class MapWidgetController {
  MapWidgetController._(int id) : _channel = MethodChannel('plugins/map_widget_$id');

  final MethodChannel _channel;

  MethodChannel getChannel() {
    return _channel;
  }

  Future<void> ping() async {
    return _channel.invokeMethod('ping');
  }
}
