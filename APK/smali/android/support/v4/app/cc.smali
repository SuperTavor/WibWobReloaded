.class Landroid/support/v4/app/cc;
.super Landroid/support/v4/app/bz;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bt;Landroid/support/v4/app/bu;)Landroid/app/Notification;
    .locals 16

    new-instance v2, Landroid/support/v4/app/cq;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bt;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/bt;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/bt;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/bt;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/bt;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/bt;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/bt;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/bt;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/bt;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/bt;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/bt;->o:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/bt;->p:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/bt;->q:Z

    invoke-direct/range {v2 .. v15}, Landroid/support/v4/app/cq;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bu;->a(Landroid/support/v4/app/bt;Landroid/support/v4/app/bn;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method
