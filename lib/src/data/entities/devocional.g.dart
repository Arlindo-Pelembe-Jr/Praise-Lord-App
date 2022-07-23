// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devocional.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class DevotionalCollectionReference
    implements
        DevotionalQuery,
        FirestoreCollectionReference<DevotionalQuerySnapshot> {
  factory DevotionalCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$DevotionalCollectionReference;

  @override
  DevotionalDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<DevotionalDocumentReference> add(Devotional value);
}

class _$DevotionalCollectionReference extends _$DevotionalQuery
    implements DevotionalCollectionReference {
  factory _$DevotionalCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$DevotionalCollectionReference._(
      firestore.collection('devocionais_diarios').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          ),
    );
  }

  _$DevotionalCollectionReference._(
    CollectionReference<Devotional> reference,
  ) : super(reference, reference);

  static Devotional _fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$DevotionalFromJson(snapshot.data()!);
  }

  static Map<String, Object?> _toFirestore(
    Devotional value,
    SetOptions? options,
  ) {
    return _$DevotionalToJson(value);
  }

  String get path => reference.path;

  @override
  CollectionReference<Devotional> get reference =>
      super.reference as CollectionReference<Devotional>;

  @override
  DevotionalDocumentReference doc([String? id]) {
    return DevotionalDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<DevotionalDocumentReference> add(Devotional value) {
    return reference.add(value).then((ref) => DevotionalDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$DevotionalCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class DevotionalDocumentReference
    extends FirestoreDocumentReference<DevotionalDocumentSnapshot> {
  factory DevotionalDocumentReference(DocumentReference<Devotional> reference) =
      _$DevotionalDocumentReference;

  DocumentReference<Devotional> get reference;

  /// A reference to the [DevotionalCollectionReference] containing this document.
  DevotionalCollectionReference get parent {
    return _$DevotionalCollectionReference(reference.firestore);
  }

  @override
  Stream<DevotionalDocumentSnapshot> snapshots();

  @override
  Future<DevotionalDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String? id,
    String? autor,
    String? categoria,
    String? data,
    String? mensagem,
    String? titulo,
  });

  Future<void> set(Devotional value);
}

class _$DevotionalDocumentReference
    extends FirestoreDocumentReference<DevotionalDocumentSnapshot>
    implements DevotionalDocumentReference {
  _$DevotionalDocumentReference(this.reference);

  @override
  final DocumentReference<Devotional> reference;

  /// A reference to the [DevotionalCollectionReference] containing this document.
  DevotionalCollectionReference get parent {
    return _$DevotionalCollectionReference(reference.firestore);
  }

  @override
  Stream<DevotionalDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return DevotionalDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<DevotionalDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return DevotionalDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? id = _sentinel,
    Object? autor = _sentinel,
    Object? categoria = _sentinel,
    Object? data = _sentinel,
    Object? mensagem = _sentinel,
    Object? titulo = _sentinel,
  }) async {
    final json = {
      if (id != _sentinel) "id": id as String?,
      if (autor != _sentinel) "autor": autor as String?,
      if (categoria != _sentinel) "categoria": categoria as String?,
      if (data != _sentinel) "data": data as String?,
      if (mensagem != _sentinel) "mensagem": mensagem as String?,
      if (titulo != _sentinel) "titulo": titulo as String?,
    };

    return reference.update(json);
  }

  Future<void> set(Devotional value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is DevotionalDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class DevotionalDocumentSnapshot extends FirestoreDocumentSnapshot {
  DevotionalDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Devotional> snapshot;

  @override
  DevotionalDocumentReference get reference {
    return DevotionalDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Devotional? data;
}

abstract class DevotionalQuery
    implements QueryReference<DevotionalQuerySnapshot> {
  @override
  DevotionalQuery limit(int limit);

  @override
  DevotionalQuery limitToLast(int limit);

  DevotionalQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DevotionalQuery whereAutor({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DevotionalQuery whereCategoria({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DevotionalQuery whereData({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DevotionalQuery whereMensagem({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DevotionalQuery whereTitulo({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });

  DevotionalQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  });

  DevotionalQuery orderByAutor({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  });

  DevotionalQuery orderByCategoria({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  });

  DevotionalQuery orderByData({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  });

  DevotionalQuery orderByMensagem({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  });

  DevotionalQuery orderByTitulo({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  });
}

class _$DevotionalQuery extends QueryReference<DevotionalQuerySnapshot>
    implements DevotionalQuery {
  _$DevotionalQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Devotional> reference;

  DevotionalQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Devotional> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return DevotionalQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<DevotionalDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: DevotionalDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return DevotionalQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<DevotionalQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<DevotionalQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  DevotionalQuery limit(int limit) {
    return _$DevotionalQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  DevotionalQuery limitToLast(int limit) {
    return _$DevotionalQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  DevotionalQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DevotionalQuery(
      reference.where(
        'id',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  DevotionalQuery whereAutor({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DevotionalQuery(
      reference.where(
        'autor',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  DevotionalQuery whereCategoria({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DevotionalQuery(
      reference.where(
        'categoria',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  DevotionalQuery whereData({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DevotionalQuery(
      reference.where(
        'data',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  DevotionalQuery whereMensagem({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DevotionalQuery(
      reference.where(
        'mensagem',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  DevotionalQuery whereTitulo({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DevotionalQuery(
      reference.where(
        'titulo',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  DevotionalQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('id', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$DevotionalQuery(query, _collection);
  }

  DevotionalQuery orderByAutor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('autor', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$DevotionalQuery(query, _collection);
  }

  DevotionalQuery orderByCategoria({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('categoria', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$DevotionalQuery(query, _collection);
  }

  DevotionalQuery orderByData({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('data', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$DevotionalQuery(query, _collection);
  }

  DevotionalQuery orderByMensagem({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('mensagem', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$DevotionalQuery(query, _collection);
  }

  DevotionalQuery orderByTitulo({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DevotionalDocumentSnapshot? startAtDocument,
    DevotionalDocumentSnapshot? endAtDocument,
    DevotionalDocumentSnapshot? endBeforeDocument,
    DevotionalDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('titulo', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$DevotionalQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$DevotionalQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class DevotionalQuerySnapshot
    extends FirestoreQuerySnapshot<DevotionalQueryDocumentSnapshot> {
  DevotionalQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Devotional> snapshot;

  @override
  final List<DevotionalQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<DevotionalDocumentSnapshot>> docChanges;
}

class DevotionalQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements DevotionalDocumentSnapshot {
  DevotionalQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Devotional> snapshot;

  @override
  DevotionalDocumentReference get reference {
    return DevotionalDocumentReference(snapshot.reference);
  }

  @override
  final Devotional data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Devotional _$DevotionalFromJson(Map<String, dynamic> json) => Devotional(
      autor: json['autor'] as String?,
      categoria: json['categoria'] as String?,
      data: json['data'] as String?,
      id: json['id'] as String?,
      mensagem: json['mensagem'] as String?,
      titulo: json['titulo'] as String?,
    );

Map<String, dynamic> _$DevotionalToJson(Devotional instance) =>
    <String, dynamic>{
      'id': instance.id,
      'autor': instance.autor,
      'categoria': instance.categoria,
      'data': instance.data,
      'mensagem': instance.mensagem,
      'titulo': instance.titulo,
    };
