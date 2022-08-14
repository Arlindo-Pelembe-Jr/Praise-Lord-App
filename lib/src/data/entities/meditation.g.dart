// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation.dart';

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
abstract class MeditationCollectionReference
    implements
        MeditationQuery,
        FirestoreCollectionReference<MeditationQuerySnapshot> {
  factory MeditationCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MeditationCollectionReference;

  @override
  MeditationDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MeditationDocumentReference> add(Meditation value);
}

class _$MeditationCollectionReference extends _$MeditationQuery
    implements MeditationCollectionReference {
  factory _$MeditationCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MeditationCollectionReference._(
      firestore.collection('devocionais').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          ),
    );
  }

  _$MeditationCollectionReference._(
    CollectionReference<Meditation> reference,
  ) : super(reference, reference);

  static Meditation _fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Meditation.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> _toFirestore(
    Meditation value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  String get path => reference.path;

  @override
  CollectionReference<Meditation> get reference =>
      super.reference as CollectionReference<Meditation>;

  @override
  MeditationDocumentReference doc([String? id]) {
    return MeditationDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MeditationDocumentReference> add(Meditation value) {
    return reference.add(value).then((ref) => MeditationDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MeditationCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MeditationDocumentReference
    extends FirestoreDocumentReference<MeditationDocumentSnapshot> {
  factory MeditationDocumentReference(DocumentReference<Meditation> reference) =
      _$MeditationDocumentReference;

  DocumentReference<Meditation> get reference;

  /// A reference to the [MeditationCollectionReference] containing this document.
  MeditationCollectionReference get parent {
    return _$MeditationCollectionReference(reference.firestore);
  }

  @override
  Stream<MeditationDocumentSnapshot> snapshots();

  @override
  Future<MeditationDocumentSnapshot> get([GetOptions? options]);

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

  Future<void> set(Meditation value);
}

class _$MeditationDocumentReference
    extends FirestoreDocumentReference<MeditationDocumentSnapshot>
    implements MeditationDocumentReference {
  _$MeditationDocumentReference(this.reference);

  @override
  final DocumentReference<Meditation> reference;

  /// A reference to the [MeditationCollectionReference] containing this document.
  MeditationCollectionReference get parent {
    return _$MeditationCollectionReference(reference.firestore);
  }

  @override
  Stream<MeditationDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return MeditationDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<MeditationDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return MeditationDocumentSnapshot._(
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

  Future<void> set(Meditation value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is MeditationDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class MeditationDocumentSnapshot extends FirestoreDocumentSnapshot {
  MeditationDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Meditation> snapshot;

  @override
  MeditationDocumentReference get reference {
    return MeditationDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Meditation? data;
}

abstract class MeditationQuery
    implements QueryReference<MeditationQuerySnapshot> {
  @override
  MeditationQuery limit(int limit);

  @override
  MeditationQuery limitToLast(int limit);

  MeditationQuery whereId({
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
  MeditationQuery whereAutor({
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
  MeditationQuery whereCategoria({
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
  MeditationQuery whereData({
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
  MeditationQuery whereMensagem({
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
  MeditationQuery whereTitulo({
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

  MeditationQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
  });

  MeditationQuery orderByAutor({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
  });

  MeditationQuery orderByCategoria({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
  });

  MeditationQuery orderByData({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
  });

  MeditationQuery orderByMensagem({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
  });

  MeditationQuery orderByTitulo({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
  });
}

class _$MeditationQuery extends QueryReference<MeditationQuerySnapshot>
    implements MeditationQuery {
  _$MeditationQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Meditation> reference;

  MeditationQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Meditation> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return MeditationQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<MeditationDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: MeditationDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return MeditationQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<MeditationQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<MeditationQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  MeditationQuery limit(int limit) {
    return _$MeditationQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  MeditationQuery limitToLast(int limit) {
    return _$MeditationQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  MeditationQuery whereId({
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
    return _$MeditationQuery(
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

  MeditationQuery whereAutor({
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
    return _$MeditationQuery(
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

  MeditationQuery whereCategoria({
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
    return _$MeditationQuery(
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

  MeditationQuery whereData({
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
    return _$MeditationQuery(
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

  MeditationQuery whereMensagem({
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
    return _$MeditationQuery(
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

  MeditationQuery whereTitulo({
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
    return _$MeditationQuery(
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

  MeditationQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
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

    return _$MeditationQuery(query, _collection);
  }

  MeditationQuery orderByAutor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
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

    return _$MeditationQuery(query, _collection);
  }

  MeditationQuery orderByCategoria({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
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

    return _$MeditationQuery(query, _collection);
  }

  MeditationQuery orderByData({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
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

    return _$MeditationQuery(query, _collection);
  }

  MeditationQuery orderByMensagem({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
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

    return _$MeditationQuery(query, _collection);
  }

  MeditationQuery orderByTitulo({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MeditationDocumentSnapshot? startAtDocument,
    MeditationDocumentSnapshot? endAtDocument,
    MeditationDocumentSnapshot? endBeforeDocument,
    MeditationDocumentSnapshot? startAfterDocument,
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

    return _$MeditationQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$MeditationQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MeditationQuerySnapshot
    extends FirestoreQuerySnapshot<MeditationQueryDocumentSnapshot> {
  MeditationQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Meditation> snapshot;

  @override
  final List<MeditationQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MeditationDocumentSnapshot>> docChanges;
}

class MeditationQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements MeditationDocumentSnapshot {
  MeditationQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Meditation> snapshot;

  @override
  MeditationDocumentReference get reference {
    return MeditationDocumentReference(snapshot.reference);
  }

  @override
  final Meditation data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meditation _$MeditationFromJson(Map<String, dynamic> json) => Meditation(
      autor: json['autor'] as String?,
      categoria: json['categoria'] as String?,
      data: json['data'] as String?,
      id: json['id'] as String?,
      mensagem: json['mensagem'] as String?,
      titulo: json['titulo'] as String?,
    );

Map<String, dynamic> _$MeditationToJson(Meditation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'autor': instance.autor,
      'categoria': instance.categoria,
      'data': instance.data,
      'mensagem': instance.mensagem,
      'titulo': instance.titulo,
    };
