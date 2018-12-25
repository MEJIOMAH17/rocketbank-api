.class Lio/realm/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field private nativePtr:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p2}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result p2

    invoke-virtual {p3}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lio/realm/Property;->nativeCreateProperty(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/Property;->nativePtr:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p2}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result p2

    xor-int/lit8 p5, p5, 0x1

    invoke-static {p1, p2, p3, p4, p5}, Lio/realm/Property;->nativeCreateProperty(Ljava/lang/String;IZZZ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/realm/Property;->nativePtr:J

    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCreateProperty(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method private static native nativeCreateProperty(Ljava/lang/String;IZZZ)J
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 48
    iget-wide v0, p0, Lio/realm/Property;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 49
    iget-wide v0, p0, Lio/realm/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/Property;->nativeClose(J)V

    .line 50
    iput-wide v2, p0, Lio/realm/Property;->nativePtr:J

    :cond_0
    return-void
.end method

.method protected final getNativePtr()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lio/realm/Property;->nativePtr:J

    return-wide v0
.end method
