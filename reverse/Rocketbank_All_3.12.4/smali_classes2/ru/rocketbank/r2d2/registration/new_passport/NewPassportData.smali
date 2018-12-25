.class public final Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;
.super Ljava/lang/Object;
.source "NewPassportData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/new_passport/NewPassportData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData$Companion;

.field public static final PAGE_18:I = 0x3

.field public static final PAGE_MAIN:I = 0x1

.field public static final PAGE_REGISTRATION:I = 0x2

.field public static final READY:I = 0x4


# instance fields
.field private final step:Landroid/databinding/ObservableInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/databinding/ObservableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->step:Landroid/databinding/ObservableInt;

    return-void
.end method

.method private final getDrawable(IZ)I
    .locals 2

    const v0, 0x7f080194

    const v1, 0x7f080198

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_3

    return v1

    :pswitch_0
    if-eqz p2, :cond_0

    const p1, 0x7f08019a

    return p1

    :cond_0
    const p1, 0x7f080196

    return p1

    :pswitch_1
    if-eqz p2, :cond_1

    const p1, 0x7f080199

    return p1

    :cond_1
    const p1, 0x7f080195

    return p1

    :pswitch_2
    if-eqz p2, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getStep()Landroid/databinding/ObservableInt;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->step:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final selectImageForStep(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ge p1, p2, :cond_1

    const p1, 0x7f080193

    .line 19
    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string p2, "ContextCompat.getDrawabl\u2026able.ic_timeline_check)!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    if-ne p1, p2, :cond_3

    const/4 p2, 0x1

    .line 20
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->getDrawable(IZ)I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string p2, "ContextCompat.getDrawabl\u2026awable(itemStep, true))!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const/4 p2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportData;->getDrawable(IZ)I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string p2, "ContextCompat.getDrawabl\u2026wable(itemStep, false))!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
