.class final Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source "RemittanceCheckInfoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "logException"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "logException(Ljava/lang/Throwable;)V"

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 118
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
