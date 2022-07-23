// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gospel.dart';

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
abstract class GospelCollectionReference
    implements GospelQuery, FirestoreCollectionReference<GospelQuerySnapshot> {
  factory GospelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$GospelCollectionReference;

  @override
  GospelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<GospelDocumentReference> add(Gospel value);
}

class _$GospelCollectionReference extends _$GospelQuery
    implements GospelCollectionReference {
  factory _$GospelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$GospelCollectionReference._(
      firestore.collection('evangelho').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          ),
    );
  }

  _$GospelCollectionReference._(
    CollectionReference<Gospel> reference,
  ) : super(reference, reference);

  static Gospel _fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$GospelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> _toFirestore(
    Gospel value,
    SetOptions? options,
  ) {
    return _$GospelToJson(value);
  }

  String get path => reference.path;

  @override
  CollectionReference<Gospel> get reference =>
      super.reference as CollectionReference<Gospel>;

  @override
  GospelDocumentReference doc([String? id]) {
    return GospelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<GospelDocumentReference> add(Gospel value) {
    return reference.add(value).then((ref) => GospelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$GospelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class GospelDocumentReference
    extends FirestoreDocumentReference<GospelDocumentSnapshot> {
  factory GospelDocumentReference(DocumentReference<Gospel> reference) =
      _$GospelDocumentReference;

  DocumentReference<Gospel> get reference;

  /// A reference to the [GospelCollectionReference] containing this document.
  GospelCollectionReference get parent {
    return _$GospelCollectionReference(reference.firestore);
  }

  @override
  Stream<GospelDocumentSnapshot> snapshots();

  @override
  Future<GospelDocumentSnapshot> get([GetOptions? options]);

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

  Future<void> set(Gospel value);
}

class _$GospelDocumentReference
    extends FirestoreDocumentReference<GospelDocumentSnapshot>
    implements GospelDocumentReference {
  _$GospelDocumentReference(this.reference);

  @override
  final DocumentReference<Gospel> reference;

  /// A reference to the [GospelCollectionReference] containing this document.
  GospelCollectionReference get parent {
    return _$GospelCollectionReference(reference.firestore);
  }

  @override
  Stream<GospelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return GospelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<GospelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return GospelDocumentSnapshot._(
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

  Future<void> set(Gospel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is GospelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class GospelDocumentSnapshot extends FirestoreDocumentSnapshot {
  GospelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Gospel> snapshot;

  @override
  GospelDocumentReference get reference {
    return GospelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Gospel? data;
}

abstract class GospelQuery implements QueryReference<GospelQuerySnapshot> {
  @override
  GospelQuery limit(int limit);

  @override
  GospelQuery limitToLast(int limit);

  GospelQuery whereId({
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
  GospelQuery whereAutor({
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
  GospelQuery whereCategoria({
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
  GospelQuery whereData({
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
  GospelQuery whereMensagem({
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
  GospelQuery whereTitulo({
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

  GospelQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
  });

  GospelQuery orderByAutor({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
  });

  GospelQuery orderByCategoria({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
  });

  GospelQuery orderByData({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
  });

  GospelQuery orderByMensagem({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
  });

  GospelQuery orderByTitulo({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
  });
}

class _$GospelQuery extends QueryReference<GospelQuerySnapshot>
    implements GospelQuery {
  _$GospelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Gospel> reference;

  GospelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Gospel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return GospelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<GospelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: GospelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return GospelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<GospelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<GospelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  GospelQuery limit(int limit) {
    return _$GospelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  GospelQuery limitToLast(int limit) {
    return _$GospelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  GospelQuery whereId({
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
    return _$GospelQuery(
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

  GospelQuery whereAutor({
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
    return _$GospelQuery(
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

  GospelQuery whereCategoria({
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
    return _$GospelQuery(
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

  GospelQuery whereData({
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
    return _$GospelQuery(
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

  GospelQuery whereMensagem({
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
    return _$GospelQuery(
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

  GospelQuery whereTitulo({
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
    return _$GospelQuery(
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

  GospelQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
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

    return _$GospelQuery(query, _collection);
  }

  GospelQuery orderByAutor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
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

    return _$GospelQuery(query, _collection);
  }

  GospelQuery orderByCategoria({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
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

    return _$GospelQuery(query, _collection);
  }

  GospelQuery orderByData({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
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

    return _$GospelQuery(query, _collection);
  }

  GospelQuery orderByMensagem({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
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

    return _$GospelQuery(query, _collection);
  }

  GospelQuery orderByTitulo({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GospelDocumentSnapshot? startAtDocument,
    GospelDocumentSnapshot? endAtDocument,
    GospelDocumentSnapshot? endBeforeDocument,
    GospelDocumentSnapshot? startAfterDocument,
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

    return _$GospelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$GospelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class GospelQuerySnapshot
    extends FirestoreQuerySnapshot<GospelQueryDocumentSnapshot> {
  GospelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Gospel> snapshot;

  @override
  final List<GospelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<GospelDocumentSnapshot>> docChanges;
}

class GospelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements GospelDocumentSnapshot {
  GospelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Gospel> snapshot;

  @override
  GospelDocumentReference get reference {
    return GospelDocumentReference(snapshot.reference);
  }

  @override
  final Gospel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gospel _$GospelFromJson(Map<String, dynamic> json) => Gospel(
      autor: json['autor'] as String?,
      categoria: json['categoria'] as String?,
      data: json['data'] as String?,
      id: json['id'] as String?,
      mensagem: json['mensagem'] as String?,
      titulo: json['titulo'] as String?,
    );

Map<String, dynamic> _$GospelToJson(Gospel instance) => <String, dynamic>{
      'id': instance.id,
      'autor': instance.autor,
      'categoria': instance.categoria,
      'data': instance.data,
      'mensagem': instance.mensagem,
      'titulo': instance.titulo,
    };
