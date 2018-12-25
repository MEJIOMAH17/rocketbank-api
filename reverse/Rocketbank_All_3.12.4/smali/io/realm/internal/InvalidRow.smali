.class public final enum Lio/realm/internal/InvalidRow;
.super Ljava/lang/Enum;
.source "InvalidRow.java"

# interfaces
.implements Lio/realm/internal/Row;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/InvalidRow;",
        ">;",
        "Lio/realm/internal/Row;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/InvalidRow;

.field public static final enum INSTANCE:Lio/realm/internal/InvalidRow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lio/realm/internal/InvalidRow;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/internal/InvalidRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Lio/realm/internal/InvalidRow;

    sget-object v1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/internal/InvalidRow;->$VALUES:[Lio/realm/internal/InvalidRow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private getStubException()Ljava/lang/RuntimeException;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object is no longer managed by Realm. Has it been deleted?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/InvalidRow;
    .locals 1

    .line 29
    const-class v0, Lio/realm/internal/InvalidRow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/InvalidRow;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/InvalidRow;
    .locals 1

    .line 29
    sget-object v0, Lio/realm/internal/InvalidRow;->$VALUES:[Lio/realm/internal/InvalidRow;

    invoke-virtual {v0}, [Lio/realm/internal/InvalidRow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/InvalidRow;

    return-object v0
.end method


# virtual methods
.method public final checkIfAttached()V
    .locals 1

    .line 174
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final getBinaryByteArray(J)[B
    .locals 0

    .line 94
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getBoolean(J)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getColumnCount()J
    .locals 1

    .line 34
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final getColumnIndex(Ljava/lang/String;)J
    .locals 0

    .line 44
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getColumnName(J)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getColumnType(J)Lio/realm/RealmFieldType;
    .locals 0

    .line 49
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getDate(J)Ljava/util/Date;
    .locals 0

    .line 84
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getDouble(J)D
    .locals 0

    .line 79
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getFloat(J)F
    .locals 0

    .line 74
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getIndex()J
    .locals 1

    .line 59
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final getLink(J)J
    .locals 0

    .line 99
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getLinkList(J)Lio/realm/internal/LinkView;
    .locals 0

    .line 109
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getLong(J)J
    .locals 0

    .line 64
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getString(J)Ljava/lang/String;
    .locals 0

    .line 89
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final getTable()Lio/realm/internal/Table;
    .locals 1

    .line 54
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final hasColumn(Ljava/lang/String;)Z
    .locals 0

    .line 179
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final isAttached()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isNull(J)Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final isNullLink(J)Z
    .locals 0

    .line 104
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final nullifyLink(J)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setBinaryByteArray(J[B)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setBoolean(JZ)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setDate(JLjava/util/Date;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setDouble(JD)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setFloat(JF)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setLink(JJ)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setLong(JJ)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setNull(J)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final setString(JLjava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
