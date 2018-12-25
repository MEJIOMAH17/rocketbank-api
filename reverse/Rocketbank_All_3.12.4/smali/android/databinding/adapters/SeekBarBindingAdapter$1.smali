.class final Landroid/databinding/adapters/SeekBarBindingAdapter$1;
.super Ljava/lang/Object;
.source "SeekBarBindingAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/SeekBarBindingAdapter;->setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroid/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChanged:Landroid/databinding/InverseBindingListener;

.field final synthetic val$progressChanged:Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

.field final synthetic val$start:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

.field final synthetic val$stop:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroid/databinding/InverseBindingListener;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$progressChanged:Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    iput-object p2, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$attrChanged:Landroid/databinding/InverseBindingListener;

    iput-object p3, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$start:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

    iput-object p4, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$stop:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$progressChanged:Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$progressChanged:Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    invoke-interface {v0, p1, p2, p3}, Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 56
    :cond_0
    iget-object p1, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$attrChanged:Landroid/databinding/InverseBindingListener;

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$attrChanged:Landroid/databinding/InverseBindingListener;

    invoke-interface {p1}, Landroid/databinding/InverseBindingListener;->onChange()V

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$start:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$start:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$stop:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;->val$stop:Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
