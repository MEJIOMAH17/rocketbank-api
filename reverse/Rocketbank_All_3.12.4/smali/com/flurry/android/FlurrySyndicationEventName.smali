.class public final enum Lcom/flurry/android/FlurrySyndicationEventName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/android/FlurrySyndicationEventName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST_REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

.field public static final enum LIKE:Lcom/flurry/android/FlurrySyndicationEventName;

.field public static final enum REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

.field public static final enum SOURCE_LINK:Lcom/flurry/android/FlurrySyndicationEventName;

.field private static final synthetic b:[Lcom/flurry/android/FlurrySyndicationEventName;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v1, "REBLOG"

    const-string v2, "Reblog"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

    .line 25
    new-instance v0, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v1, "FAST_REBLOG"

    const-string v2, "FastReblog"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->FAST_REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

    .line 28
    new-instance v0, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v1, "SOURCE_LINK"

    const-string v2, "SourceClick"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->SOURCE_LINK:Lcom/flurry/android/FlurrySyndicationEventName;

    .line 31
    new-instance v0, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v1, "LIKE"

    const-string v2, "Like"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->LIKE:Lcom/flurry/android/FlurrySyndicationEventName;

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Lcom/flurry/android/FlurrySyndicationEventName;

    sget-object v1, Lcom/flurry/android/FlurrySyndicationEventName;->REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/FlurrySyndicationEventName;->FAST_REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/FlurrySyndicationEventName;->SOURCE_LINK:Lcom/flurry/android/FlurrySyndicationEventName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/FlurrySyndicationEventName;->LIKE:Lcom/flurry/android/FlurrySyndicationEventName;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->b:[Lcom/flurry/android/FlurrySyndicationEventName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/flurry/android/FlurrySyndicationEventName;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/FlurrySyndicationEventName;
    .locals 1

    .line 19
    const-class v0, Lcom/flurry/android/FlurrySyndicationEventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/FlurrySyndicationEventName;

    return-object p0
.end method

.method public static values()[Lcom/flurry/android/FlurrySyndicationEventName;
    .locals 1

    .line 19
    sget-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->b:[Lcom/flurry/android/FlurrySyndicationEventName;

    invoke-virtual {v0}, [Lcom/flurry/android/FlurrySyndicationEventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/FlurrySyndicationEventName;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/flurry/android/FlurrySyndicationEventName;->a:Ljava/lang/String;

    return-object v0
.end method
