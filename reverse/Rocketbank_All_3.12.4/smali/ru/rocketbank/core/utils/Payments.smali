.class public final Lru/rocketbank/core/utils/Payments;
.super Ljava/lang/Object;
.source "Payments.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/utils/Payments;

.field public static final PAYMENT_HASH_PARAM:Ljava/lang/String; = "app_uniq_timestamp_hash"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lru/rocketbank/core/utils/Payments;

    invoke-direct {v0}, Lru/rocketbank/core/utils/Payments;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newHash()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
