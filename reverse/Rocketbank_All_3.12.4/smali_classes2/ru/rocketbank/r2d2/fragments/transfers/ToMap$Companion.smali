.class public final Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/ToMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;

.field private static final convert:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1269
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;->$$INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;

    .line 1270
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion$convert$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;->convert:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConvert()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1270
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;->convert:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
