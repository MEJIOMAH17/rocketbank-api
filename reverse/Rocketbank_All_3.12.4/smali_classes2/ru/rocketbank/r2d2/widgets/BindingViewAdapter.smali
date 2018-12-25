.class public final Lru/rocketbank/r2d2/widgets/BindingViewAdapter;
.super Ljava/lang/Object;
.source "BindingViewAdapter.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/widgets/BindingViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lru/rocketbank/r2d2/widgets/BindingViewAdapter;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/BindingViewAdapter;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widgets/BindingViewAdapter;->INSTANCE:Lru/rocketbank/r2d2/widgets/BindingViewAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setDrawable(Landroid/support/v7/widget/AppCompatImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Landroid/databinding/BindingAdapter;
        value = {
            "srcCompat"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
