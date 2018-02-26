clc
clear all
close all
im=imread('fabric.png');
he=imread('fabric.png');
%convert the RGB colour space to LAB colour space
cform=makecform('srgb2lab');
lab_he=applycform(he,cform);
%classify the colours in ab space using k means
ab=double(lab_he(:,:,2:3));
nrows=size(ab,1);
ncols=size(ab,2);
ab=reshape(ab,nrows*ncols,2);

nColors=5;
%repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',5);
%label every pixel in the image 
pixel_labels=reshape(cluster_idx,nrows,ncols);
%color segmentation
segmented_images = cell(1,5);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = he;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;

end
 imshow(im),title('Test image(RGB)'),figure,
 imshow(lab_he),title('Test image(LAB)'),figure,
 imshow(pixel_labels,[]), title('image labeled by cluster index'),figure,
 imshow(segmented_images{1}),title('objects in cluster 1'),figure,
 imshow(segmented_images{2}),title('objects in cluster 2'),figure,
 imshow(segmented_images{3}),title('objects in cluster 3'),figure,
 imshow(segmented_images{4}),title('objects in cluster 4'),figure,
 imshow(segmented_images{5}),title('objects in cluster 5')