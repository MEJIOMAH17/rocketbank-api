package io.realm;

import io.realm.internal.Collection;
import io.realm.internal.LinkView;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;

public final class RealmQuery<E extends RealmModel> {
    private Class<E> clazz;
    private LinkView linkView = null;
    private final TableQuery query = this.table.where();
    private final BaseRealm realm;
    private final RealmObjectSchema schema;
    private final Table table = this.schema.getTable();

    public static <E extends RealmModel> RealmQuery<E> createQuery(Realm realm, Class<E> cls) {
        return new RealmQuery(realm, cls);
    }

    private RealmQuery(Realm realm, Class<E> cls) {
        this.realm = realm;
        this.clazz = cls;
        this.schema = realm.getSchema().getSchemaForClass(cls);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, String str2, Case caseR) {
        str = this.schema.getColumnIndices(str, RealmFieldType.STRING);
        this.query.equalTo(str.getColumnIndices(), str.getNativeTablePointers(), str2, caseR);
        return this;
    }

    public final RealmQuery<E> equalTo(String str, Long l) {
        this.realm.checkIfValid();
        str = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (l == null) {
            this.query.isNull(str.getColumnIndices(), str.getNativeTablePointers());
        } else {
            this.query.equalTo(str.getColumnIndices(), str.getNativeTablePointers(), l.longValue());
        }
        return this;
    }

    public final RealmQuery<E> equalTo(String str, Boolean bool) {
        this.realm.checkIfValid();
        str = this.schema.getColumnIndices(str, RealmFieldType.BOOLEAN);
        if (bool == null) {
            this.query.isNull(str.getColumnIndices(), str.getNativeTablePointers());
        } else {
            this.query.equalTo(str.getColumnIndices(), str.getNativeTablePointers(), bool.booleanValue());
        }
        return this;
    }

    public final RealmQuery<E> in(String str, String[] strArr) {
        Case caseR = Case.SENSITIVE;
        this.realm.checkIfValid();
        if (strArr != null) {
            if (strArr.length != 0) {
                this.query.group();
                equalToWithoutThreadValidation(str, strArr[0], caseR);
                for (int i = 1; i < strArr.length; i++) {
                    this.query.or();
                    equalToWithoutThreadValidation(str, strArr[i], caseR);
                }
                this.query.endGroup();
                return this;
            }
        }
        throw new IllegalArgumentException("Non-empty 'values' must be provided.");
    }

    public final Number max(String str) {
        this.realm.checkIfValid();
        long andCheckFieldIndex = this.schema.getAndCheckFieldIndex(str);
        switch (this.table.getColumnType(andCheckFieldIndex)) {
            case INTEGER:
                return this.query.maximumInt(andCheckFieldIndex);
            case FLOAT:
                return this.query.maximumFloat(andCheckFieldIndex);
            case DOUBLE:
                return this.query.maximumDouble(andCheckFieldIndex);
            default:
                throw new IllegalArgumentException(String.format("Field '%s': type mismatch - %s expected.", new Object[]{str, "int, float or double"}));
        }
    }

    public final RealmResults<E> findAll() {
        this.realm.checkIfValid();
        return createRealmResults$53bd7f42(this.query, true);
    }

    public final RealmResults<E> findAllAsync() {
        this.realm.checkIfValid();
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification("Async query cannot be created on current thread.");
        return createRealmResults$53bd7f42(this.query, false);
    }

    public final E findFirst() {
        this.realm.checkIfValid();
        long find = this.query.find();
        return find < 0 ? null : this.realm.get$5a829220(this.clazz, find);
    }

    private RealmResults<E> createRealmResults$53bd7f42(TableQuery tableQuery, boolean z) {
        tableQuery = new RealmResults(this.realm, new Collection(this.realm.sharedRealm, tableQuery, null, null), this.clazz);
        if (z) {
            tableQuery.load();
        }
        return tableQuery;
    }
}
