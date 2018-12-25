.class final Lru/rocketbank/core/widgets/RocketSnackbar$ThemeUtils;
.super Ljava/lang/Object;
.source "RocketSnackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeUtils"
.end annotation


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040085

    aput v2, v0, v1

    sput-object v0, Lru/rocketbank/core/widgets/RocketSnackbar$ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 1

    .line 82
    sget-object v0, Lru/rocketbank/core/widgets/RocketSnackbar$ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    if-eqz v0, :cond_1

    .line 88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
