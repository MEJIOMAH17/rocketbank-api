.class public final enum Lcom/mattprecious/swirl/SwirlView$State;
.super Ljava/lang/Enum;
.source "SwirlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mattprecious/swirl/SwirlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mattprecious/swirl/SwirlView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mattprecious/swirl/SwirlView$State;

.field public static final enum ERROR:Lcom/mattprecious/swirl/SwirlView$State;

.field public static final enum OFF:Lcom/mattprecious/swirl/SwirlView$State;

.field public static final enum ON:Lcom/mattprecious/swirl/SwirlView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/mattprecious/swirl/SwirlView$State;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mattprecious/swirl/SwirlView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    .line 17
    new-instance v0, Lcom/mattprecious/swirl/SwirlView$State;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mattprecious/swirl/SwirlView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mattprecious/swirl/SwirlView$State;->ON:Lcom/mattprecious/swirl/SwirlView$State;

    .line 18
    new-instance v0, Lcom/mattprecious/swirl/SwirlView$State;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mattprecious/swirl/SwirlView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/mattprecious/swirl/SwirlView$State;

    sget-object v1, Lcom/mattprecious/swirl/SwirlView$State;->OFF:Lcom/mattprecious/swirl/SwirlView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mattprecious/swirl/SwirlView$State;->ON:Lcom/mattprecious/swirl/SwirlView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mattprecious/swirl/SwirlView$State;->$VALUES:[Lcom/mattprecious/swirl/SwirlView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mattprecious/swirl/SwirlView$State;
    .locals 1

    .line 15
    const-class v0, Lcom/mattprecious/swirl/SwirlView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mattprecious/swirl/SwirlView$State;

    return-object p0
.end method

.method public static values()[Lcom/mattprecious/swirl/SwirlView$State;
    .locals 1

    .line 15
    sget-object v0, Lcom/mattprecious/swirl/SwirlView$State;->$VALUES:[Lcom/mattprecious/swirl/SwirlView$State;

    invoke-virtual {v0}, [Lcom/mattprecious/swirl/SwirlView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mattprecious/swirl/SwirlView$State;

    return-object v0
.end method
