.class public final enum Lio/realm/Sort;
.super Ljava/lang/Enum;
.source "Sort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/Sort;

.field public static final enum ASCENDING:Lio/realm/Sort;

.field public static final enum DESCENDING:Lio/realm/Sort;


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lio/realm/Sort;

    const-string v1, "ASCENDING"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lio/realm/Sort;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    .line 26
    new-instance v0, Lio/realm/Sort;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v2, v3}, Lio/realm/Sort;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lio/realm/Sort;

    sget-object v1, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/Sort;->$VALUES:[Lio/realm/Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-boolean p3, p0, Lio/realm/Sort;->value:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/Sort;
    .locals 1

    .line 24
    const-class v0, Lio/realm/Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/Sort;

    return-object p0
.end method

.method public static values()[Lio/realm/Sort;
    .locals 1

    .line 24
    sget-object v0, Lio/realm/Sort;->$VALUES:[Lio/realm/Sort;

    invoke-virtual {v0}, [Lio/realm/Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/Sort;

    return-object v0
.end method


# virtual methods
.method public final getValue()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lio/realm/Sort;->value:Z

    return v0
.end method
