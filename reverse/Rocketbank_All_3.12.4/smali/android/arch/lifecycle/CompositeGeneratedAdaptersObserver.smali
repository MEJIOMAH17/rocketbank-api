.class public Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# instance fields
.field private final mGeneratedAdapters:[Landroid/arch/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Landroid/arch/lifecycle/GeneratedAdapter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroid/arch/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 36
    new-instance p1, Landroid/arch/lifecycle/MethodCallsLogger;

    invoke-direct {p1}, Landroid/arch/lifecycle/MethodCallsLogger;-><init>()V

    return-void
.end method
