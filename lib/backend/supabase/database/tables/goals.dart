import '../database.dart';

class GoalsTable extends SupabaseTable<GoalsRow> {
  @override
  String get tableName => 'goals';

  @override
  GoalsRow createRow(Map<String, dynamic> data) => GoalsRow(data);
}

class GoalsRow extends SupabaseDataRow {
  GoalsRow(super.data);

  @override
  SupabaseTable get table => GoalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
