abstract class AuthStates {}

class Initstate extends AuthStates{}

class LoginSuccessState extends AuthStates{}
class LoginLoadingState extends AuthStates{}
class LoginErrorState extends AuthStates{}


class SignUpSuccessState extends AuthStates{}
class SignUpLoadingState extends AuthStates{}
class SignUpErrorState extends AuthStates{}