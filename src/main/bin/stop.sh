#!/bin/bash

echo "stopping idt-banana-app-label springboot web service ..."
for sid in `jps|grep 'idt-banana-app-label' | awk '{print $1}'`
do
    kill ${sid}
done

echo "stop idt-banana-app-label springboot web service done"
