.class public final Lru/rocketbank/core/dagger/RetrofitModule$provideRetrofitForYandex$gson$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "RetrofitModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/dagger/RetrofitModule;->provideRetrofitForYandex()Lretrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
