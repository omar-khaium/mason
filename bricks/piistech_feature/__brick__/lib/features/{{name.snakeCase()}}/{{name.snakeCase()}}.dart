export 'data/repositories/{{name.snakeCase()}}_impl.dart';
export 'data/datasources/remote.dart';
export 'data/datasources/remote_impl.dart';
{{#local}}
export 'data/datasources/local.dart';
export 'data/datasources/local_impl.dart';
{{/local}}
export 'data/models/{{name.snakeCase()}}.dart';

export 'domain/entities/{{name.snakeCase()}}.dart';
export 'domain/repositories/{{name.snakeCase()}}.dart';
export 'domain/usecases/create.dart';
export 'domain/usecases/delete.dart';
export 'domain/usecases/find.dart';
export 'domain/usecases/read.dart';
export 'domain/usecases/refresh.dart';
export 'domain/usecases/search.dart';
export 'domain/usecases/update.dart';

{{#blocs}}
export 'presentation/bloc/{{.}}_bloc.dart';
{{/blocs}}

export 'presentation/pages/{{name.snakeCase()}}.dart';
