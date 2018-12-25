.class public final Landroid/support/compat/R;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/compat/R$styleable;,
        Landroid/support/compat/R$string;,
        Landroid/support/compat/R$layout;,
        Landroid/support/compat/R$integer;,
        Landroid/support/compat/R$id;,
        Landroid/support/compat/R$drawable;,
        Landroid/support/compat/R$dimen;,
        Landroid/support/compat/R$color;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/media/MediaPlayer;",
        ">;"
    }
.end annotation


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2018
    invoke-static {}, Lru/rocketbank/core/dagger/AndroidModule;->provideMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 2017
    check-cast v0, Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n*** Metrics ***\nmeasures: 0\nadditionalMeasures: 0\nresolutions passes: 0\ntable increases: 0\nmaxTableSize: 0\nmaxVariables: 0\nmaxRows: 0\n\nminimize: 0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nminimizeGoal: 0\nconstraints: 0\nsimpleconstraints: 0\noptimize: 0\niterations: 0\npivots: 0\nbfs: 0\nvariables: 0\nerrors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nslackvariables: 0\nextravariables: 0\nfullySolved: 0\ngraphOptimizer: 0\nresolvedWidgets: 0\noldresolvedWidgets: 0\nnonresolvedWidgets: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncenterConnectionResolved: 0\nmatchConnectionResolved: 0\nchainConnectionResolved: 0\nbarrierConnectionResolved: 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nproblematicsLayouts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
