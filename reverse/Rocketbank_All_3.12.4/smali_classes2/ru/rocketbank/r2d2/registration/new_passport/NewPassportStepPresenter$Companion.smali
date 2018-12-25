.class final Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;
.super Ljava/lang/Object;
.source "NewPassportStepPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepPresenter;->access$getImages$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
