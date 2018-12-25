.class final Lio/realm/internal/fields/CachedFieldDescriptor;
.super Lio/realm/internal/fields/FieldDescriptor;
.source "CachedFieldDescriptor.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;


# direct methods
.method constructor <init>(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p3, p4, p5}, Lio/realm/internal/fields/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 47
    iput-object p2, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->className:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;

    return-void
.end method


# virtual methods
.method protected final compileFieldDescription(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    new-array v5, v0, [J

    .line 55
    new-array v6, v0, [J

    .line 56
    iget-object v1, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->className:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v7, v4

    move-object v2, v1

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_6

    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 64
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    iget-object v7, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;

    invoke-interface {v7, v2}, Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;->getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    .line 71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid query: table \'%s\' not found in this schema."

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 72
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    invoke-virtual {v7, v4}, Lio/realm/internal/ColumnInfo;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-gez v13, :cond_2

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid query: field \'%s\' not found in table \'%s\'."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    aput-object v2, v1, v8

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_2
    invoke-virtual {v7, v4}, Lio/realm/internal/ColumnInfo;->getColumnType(Ljava/lang/String;)Lio/realm/RealmFieldType;

    move-result-object v8

    add-int/lit8 v13, v0, -0x1

    if-ge v1, v13, :cond_3

    .line 83
    invoke-virtual {p0, v2, v4, v8}, Lio/realm/internal/fields/CachedFieldDescriptor;->verifyInternalColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;)V

    .line 84
    invoke-virtual {v7, v4}, Lio/realm/internal/ColumnInfo;->getLinkedTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_3
    aput-wide v9, v5, v1

    .line 87
    sget-object v7, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    if-eq v8, v7, :cond_4

    goto :goto_1

    .line 89
    :cond_4
    iget-object v7, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;

    invoke-interface {v7, v2}, Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;->getNativeTablePtr(Ljava/lang/String;)J

    move-result-wide v11

    :goto_1
    aput-wide v11, v6, v1

    add-int/lit8 v1, v1, 0x1

    move-object v7, v8

    goto :goto_0

    .line 65
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods (\'.\')."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_6
    iget-object v2, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->className:Ljava/lang/String;

    move-object v1, p0

    move-object v3, v4

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/fields/CachedFieldDescriptor;->setCompilationResults(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;[J[J)V

    return-void
.end method
