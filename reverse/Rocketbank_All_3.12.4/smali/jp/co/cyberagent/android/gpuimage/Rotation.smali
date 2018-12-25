.class public final enum Ljp/co/cyberagent/android/gpuimage/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/cyberagent/android/gpuimage/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/cyberagent/android/gpuimage/Rotation;

.field public static final enum NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

.field public static final enum ROTATION_180:Ljp/co/cyberagent/android/gpuimage/Rotation;

.field public static final enum ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

.field public static final enum ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/Rotation;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/Rotation;

    const-string v1, "ROTATION_90"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljp/co/cyberagent/android/gpuimage/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/Rotation;

    const-string v1, "ROTATION_180"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljp/co/cyberagent/android/gpuimage/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/Rotation;

    const-string v1, "ROTATION_270"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljp/co/cyberagent/android/gpuimage/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Ljp/co/cyberagent/android/gpuimage/Rotation;

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    aput-object v1, v0, v2

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/Rotation;

    aput-object v1, v0, v4

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    aput-object v1, v0, v5

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Ljp/co/cyberagent/android/gpuimage/Rotation;
    .locals 2

    if-eqz p0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-eq p0, v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object p0

    .line 48
    :cond_1
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object p0

    .line 47
    :cond_2
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object p0

    .line 46
    :cond_3
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object p0

    .line 45
    :cond_4
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberagent/android/gpuimage/Rotation;
    .locals 1

    .line 19
    const-class v0, Ljp/co/cyberagent/android/gpuimage/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object p0
.end method

.method public static values()[Ljp/co/cyberagent/android/gpuimage/Rotation;
    .locals 1

    .line 19
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/Rotation;

    invoke-virtual {v0}, [Ljp/co/cyberagent/android/gpuimage/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object v0
.end method


# virtual methods
.method public final asInt()I
    .locals 2

    .line 28
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/Rotation$1;->$SwitchMap$jp$co$cyberagent$android$gpuimage$Rotation:[I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown Rotation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x10e

    return v0

    :pswitch_1
    const/16 v0, 0xb4

    return v0

    :pswitch_2
    const/16 v0, 0x5a

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
