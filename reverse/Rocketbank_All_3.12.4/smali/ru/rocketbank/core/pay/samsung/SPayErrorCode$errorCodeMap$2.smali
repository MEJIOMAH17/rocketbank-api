.class final Lru/rocketbank/core/pay/samsung/SPayErrorCode$errorCodeMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SPayErrorCode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/pay/samsung/SPayErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/pay/samsung/SPayErrorCode$errorCodeMap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/pay/samsung/SPayErrorCode$errorCodeMap$2;

    invoke-direct {v0}, Lru/rocketbank/core/pay/samsung/SPayErrorCode$errorCodeMap$2;-><init>()V

    sput-object v0, Lru/rocketbank/core/pay/samsung/SPayErrorCode$errorCodeMap$2;->INSTANCE:Lru/rocketbank/core/pay/samsung/SPayErrorCode$errorCodeMap$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lru/rocketbank/core/pay/samsung/SPayErrorCode;->INSTANCE:Lru/rocketbank/core/pay/samsung/SPayErrorCode;

    invoke-static {}, Lru/rocketbank/core/pay/samsung/SPayErrorCode;->access$initCodeMap$688278bc()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lru/rocketbank/core/pay/samsung/SPayErrorCode$errorCodeMap$2;->invoke()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
