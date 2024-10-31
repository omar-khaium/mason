export 'data/repositories/{{name.snakeCase()}}_impl.dart';
export 'data/datasources/remote.dart';
export 'data/datasources/remote_impl.dart';
{{#local}}export 'data/datasources/local.dart';
export 'data/datasources/local_impl.dart';{{/local}}
export 'data/models/{{name.snakeCase()}}.dart';

export 'domain/entities/{{name.snakeCase()}}.dart';
export 'domain/repositories/{{name.snakeCase()}}.dart';
{{#blocs}}export 'domain/usecases/{{.}}.dart';{{/blocs}}

{{#blocs}}export 'presentation/bloc/{{.}}_bloc.dart';{{/blocs}}
{{#page}}export 'presentation/pages/{{name.snakeCase()}}.dart';{{/page}}