.class final Lio/realm/StandardRealmObjectSchema$FieldMetaData;
.super Ljava/lang/Object;
.source "StandardRealmObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/StandardRealmObjectSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldMetaData"
.end annotation


# instance fields
.field final defaultNullable:Z

.field final realmType:Lio/realm/RealmFieldType;


# direct methods
.method constructor <init>(Lio/realm/RealmFieldType;Z)V
    .locals 0

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p1, p0, Lio/realm/StandardRealmObjectSchema$FieldMetaData;->realmType:Lio/realm/RealmFieldType;

    .line 741
    iput-boolean p2, p0, Lio/realm/StandardRealmObjectSchema$FieldMetaData;->defaultNullable:Z

    return-void
.end method
