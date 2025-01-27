import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_block_event.dart';
part 'weather_block_state.dart';

class WeatherBlockBloc extends Bloc<WeatherBlockEvent, WeatherBlockState> {
  WeatherBlockBloc() : super(WeatherBlockInitial()) {
    on<FeatchWeather>((event, emit) async {
      emit(WeatherBlockLoading());

      try {
        WeatherFactory wf = WeatherFactory("_apiKey", language: Language.ENGLISH);
        Position position = await Geolocator.getCurrentPosition();
        Weather weather = await wf.currentWeatherByLocation(position.latitude, position.longitude);
        emit(WeatherBlockSuccess(weather));
      } catch (e) {
        emit(WeatherBlockFailure());
      }
    });
  }
}
