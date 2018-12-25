.class public final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 1630
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthInterceptor$App_prodRelease()Lokhttp3/Interceptor;
    .locals 1

    .line 1641
    invoke-static {}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getAuthInterceptor$cp()Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public final setAuthInterceptor$App_prodRelease(Lokhttp3/Interceptor;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1641
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$setAuthInterceptor$cp(Lokhttp3/Interceptor;)V

    return-void
.end method
